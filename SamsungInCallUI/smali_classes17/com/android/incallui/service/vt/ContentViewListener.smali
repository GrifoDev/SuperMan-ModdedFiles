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
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/android/incallui/service/vt/ContentViewListener$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/ContentViewListener$1;-><init>(Lcom/android/incallui/service/vt/ContentViewListener;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 74
    iput-object p1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/ContentViewListener;->registerListener()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/ContentViewListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/vt/ContentViewListener;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/vt/ContentViewListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/vt/ContentViewListener;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWidthPixels:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/service/vt/ContentViewListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/vt/ContentViewListener;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWidthPixels:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/service/vt/ContentViewListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/vt/ContentViewListener;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mHeightPixels:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/service/vt/ContentViewListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/vt/ContentViewListener;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mHeightPixels:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/service/vt/ContentViewListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/vt/ContentViewListener;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/service/vt/ContentViewListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/vt/ContentViewListener;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/service/vt/ContentViewListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/vt/ContentViewListener;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWaitingCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/incallui/service/vt/ContentViewListener;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/service/vt/ContentViewListener;

    .prologue
    .line 25
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

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 80
    const-string v1, "ContentViewListener - registerListener - mContentsView is not ready "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/ContentViewListener;->removeListener()V

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 90
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWidthPixels:I

    .line 91
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mHeightPixels:I

    .line 92
    iget v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWidthPixels:I

    iget v2, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mHeightPixels:I

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/service/vt/ContentViewListener;->onContentsViewChanged(II)V

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mWaitingCount:I

    .line 94
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    goto :goto_0
.end method

.method public removeListener()V
    .locals 2

    .prologue
    .line 99
    iget-boolean v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mIsRegistered:Z

    .line 101
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 102
    const-string v1, "ContentViewListener - removeListener - mContentsView is not ready "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 106
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    const-string v1, "ContentViewListener - removeListener - observer is not alive "

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/vt/ContentViewListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
