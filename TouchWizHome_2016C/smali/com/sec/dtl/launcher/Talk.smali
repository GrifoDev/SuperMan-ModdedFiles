.class public final enum Lcom/sec/dtl/launcher/Talk;
.super Ljava/lang/Enum;
.source "Talk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/dtl/launcher/Talk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/dtl/launcher/Talk;

.field public static final enum INSTANCE:Lcom/sec/dtl/launcher/Talk;

.field private static final TAG:Ljava/lang/String; = "Talk"


# instance fields
.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private final mApplication:Landroid/app/Application;

.field private mIsTalkbackEnabled:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechEngine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/dtl/launcher/Talk;

    const-string v1, "INSTANCE"

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/dtl/launcher/Talk;-><init>(Ljava/lang/String;ILandroid/app/Application;)V

    sput-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/dtl/launcher/Talk;

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/dtl/launcher/Talk;->$VALUES:[Lcom/sec/dtl/launcher/Talk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/dtl/launcher/Talk;->mIsTalkbackEnabled:Z

    const-string v0, "accessibility"

    invoke-virtual {p3, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    invoke-virtual {p3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/dtl/launcher/Talk;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/dtl/launcher/Talk;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/dtl/launcher/Talk;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/dtl/launcher/Talk;->setTextToSpeechLanguage(Ljava/util/Locale;)V

    return-void
.end method

.method private setTextToSpeechLanguage(Ljava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Talk"

    const-string v1, "Language is not available defaulting to US English"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const-string v0, "Talk"

    const-string v1, "Could not initialize TextToSpeech US language"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/dtl/launcher/Talk;
    .locals 1

    const-class v0, Lcom/sec/dtl/launcher/Talk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/dtl/launcher/Talk;

    return-object v0
.end method

.method public static values()[Lcom/sec/dtl/launcher/Talk;
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->$VALUES:[Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v0}, [Lcom/sec/dtl/launcher/Talk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/dtl/launcher/Talk;

    return-object v0
.end method


# virtual methods
.method public checkTalkbackStatus()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    const-string v0, "Talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccessibilityMgr.isEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccessibilityMgr.isTouchExplorationEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getTextToSpeech()Landroid/speech/tts/TextToSpeech;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackSuspend()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    goto :goto_0
.end method

.method public isTalkbackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/dtl/launcher/Talk;->mIsTalkbackEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkbackSuspend()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    const-string v6, "accessibility_enabled"

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    const-string v6, "enabled_accessibility_services"

    invoke-static {v1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v6, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    move v3, v5

    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeechEngine:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    :cond_2
    iget-object v4, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v4, :cond_3

    new-instance v4, Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    new-instance v7, Lcom/sec/dtl/launcher/Talk$1;

    invoke-direct {v7, p0}, Lcom/sec/dtl/launcher/Talk$1;-><init>(Lcom/sec/dtl/launcher/Talk;)V

    invoke-direct {v4, v6, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v4, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeechEngine:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/sec/dtl/launcher/Talk;->mIsTalkbackEnabled:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    goto :goto_1
.end method

.method public say(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public say(III)V
    .locals 4

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public say(ILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public say(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide a valid string to speak"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method public sayByTalkback(ILjava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public sayByTalkback(Landroid/view/View;IIIZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p5}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iput-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iput-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeechEngine:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/dtl/launcher/Talk;->mIsTalkbackEnabled:Z

    return-void
.end method
