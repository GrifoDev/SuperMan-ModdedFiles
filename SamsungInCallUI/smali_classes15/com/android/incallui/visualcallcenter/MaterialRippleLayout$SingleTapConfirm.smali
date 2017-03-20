.class Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$SingleTapConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTapConfirm"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$SingleTapConfirm;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 438
    const/4 v0, 0x1

    return v0
.end method
