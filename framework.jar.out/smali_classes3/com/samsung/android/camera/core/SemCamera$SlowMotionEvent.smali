.class public Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlowMotionEvent"
.end annotation


# instance fields
.field public endMillisecond:I

.field public startMillisecond:I

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core/SemCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;-><init>(Lcom/samsung/android/camera/core/SemCamera;)V

    return-void
.end method
