.class Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
.super Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;
.source "SemMotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRListenerDelegate"
.end annotation


# instance fields
.field private final EVENT_FROM_SERVICE:I

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private mListenerPackageName:Ljava/lang/String;

.field private mMotionEvents:I

.field final synthetic this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-direct {p0}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    const/16 v1, 0x35

    iput v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->EVENT_FROM_SERVICE:I

    iput-object p2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    iput p3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-get0(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/gesture/SemMotionEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionEvents()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    return v0
.end method

.method public motionCallback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resetListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-void
.end method

.method public setMotionEvents(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    return-void
.end method
