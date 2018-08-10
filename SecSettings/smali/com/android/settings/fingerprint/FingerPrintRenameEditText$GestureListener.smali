.class Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FingerPrintRenameEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintRenameEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;


# direct methods
.method private constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "FpstFingerPrintRenameEditText"

    const-string/jumbo v1, "Doubletap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->-set0(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Z)Z

    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
