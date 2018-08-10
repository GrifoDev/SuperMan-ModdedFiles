.class public Lcom/android/settingslib/SecureTouchListener;
.super Ljava/lang/Object;
.source "SecureTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mLastToastTime:J

.field private mWarningText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/SecureTouchListener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/SecureTouchListener;->mLastToastTime:J

    iput-object p1, p0, Lcom/android/settingslib/SecureTouchListener;->mWarningText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/SecureTouchListener;->mWarningText:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settingslib/SecureTouchListener;->mLastToastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/android/settingslib/SecureTouchListener;->mLastToastTime:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/SecureTouchListener;->mWarningText:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    return v6
.end method
