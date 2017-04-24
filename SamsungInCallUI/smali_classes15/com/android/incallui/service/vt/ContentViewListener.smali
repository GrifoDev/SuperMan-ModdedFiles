.class public abstract Lcom/android/incallui/service/vt/ContentViewListener;
.super Ljava/lang/Object;
.source "ContentViewListener.java"


# static fields
.field private static final DBG_LOG:Z = false

.field private static final MAX_COUNT:I = 0x2


# instance fields
.field private mContentsView:Landroid/view/View;

.field final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHeightPixels:I

.field private mIsRegistered:Z

.field private mWaitingCount:I

.field private mWidthPixels:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    new-instance v0, Lcom/android/incallui/service/vt/ContentViewListener$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/ContentViewListener$1;-><init>(Lcom/android/incallui/service/vt/ContentViewListener;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/ContentViewListener;->registerListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/ContentViewListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/vt/ContentViewListener;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWidthPixels:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/service/vt/ContentViewListener;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWidthPixels:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/service/vt/ContentViewListener;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mHeightPixels:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/service/vt/ContentViewListener;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mHeightPixels:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/service/vt/ContentViewListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/service/vt/ContentViewListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/service/vt/ContentViewListener;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWaitingCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/incallui/service/vt/ContentViewListener;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWaitingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWaitingCount:I

    return v0
.end method


# virtual methods
.method public abstract onContentsViewChanged(II)V
.end method

.method public registerListener()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "ContentViewListener - registerListener - mContentsView is not ready "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/ContentViewListener;->removeListener()V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWidthPixels:I

    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mHeightPixels:I

    iget v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWidthPixels:I

    iget v2, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mHeightPixels:I

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/service/vt/ContentViewListener;->onContentsViewChanged(II)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWaitingCount:I

    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    goto :goto_0
.end method

.method public removeListener()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v1, "ContentViewListener - removeListener - mContentsView is not ready "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ContentViewListener - removeListener - observer is not alive "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
