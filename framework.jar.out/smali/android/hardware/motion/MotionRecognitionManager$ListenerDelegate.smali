.class Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private final moldListener:Landroid/hardware/motion/MRListener;


# direct methods
.method static synthetic -get0(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method private constructor <init>(Landroid/hardware/motion/MRListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;-><init>(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/motion/MRListener;Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;-><init>(Landroid/hardware/motion/MRListener;)V

    return-void
.end method
