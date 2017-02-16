.class public abstract Lcom/android/systemui/classifier/Classifier;
.super Ljava/lang/Object;
.source "Classifier.java"


# instance fields
.field protected mClassifierData:Lcom/android/systemui/classifier/ClassifierData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
