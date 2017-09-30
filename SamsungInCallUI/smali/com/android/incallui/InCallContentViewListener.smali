.class public abstract Lcom/android/incallui/InCallContentViewListener;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "InCallContentViewListener"


# instance fields
.field private mContentsView:Landroid/view/View;

.field final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHeightPixels:I

.field private mWidthPixels:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/incallui/InCallContentViewListener;->mWidthPixels:I

    iput v0, p0, Lcom/android/incallui/InCallContentViewListener;->mHeightPixels:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    new-instance v0, Lcom/android/incallui/InCallContentViewListener$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallContentViewListener$1;-><init>(Lcom/android/incallui/InCallContentViewListener;)V

    iput-object v0, p0, Lcom/android/incallui/InCallContentViewListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallContentViewListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallContentViewListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallContentViewListener;->notifyContentViewChange(II)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    const-string v0, "InCallContentViewListener"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyContentViewChange(II)V
    .locals 2

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iget v0, p0, Lcom/android/incallui/InCallContentViewListener;->mWidthPixels:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/incallui/InCallContentViewListener;->mHeightPixels:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/incallui/InCallContentViewListener;->mWidthPixels:I

    iput p2, p0, Lcom/android/incallui/InCallContentViewListener;->mHeightPixels:I

    iget v0, p0, Lcom/android/incallui/InCallContentViewListener;->mWidthPixels:I

    iget v1, p0, Lcom/android/incallui/InCallContentViewListener;->mHeightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallContentViewListener;->onContentViewChange(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract onContentViewChange(II)V
.end method

.method public registerListener(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    const-string v0, "registerListener"

    invoke-static {v0}, Lcom/android/incallui/InCallContentViewListener;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/InCallContentViewListener;->notifyContentViewChange(II)V

    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "removeListener - failed "

    invoke-static {v0}, Lcom/android/incallui/InCallContentViewListener;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v0, "removeListener"

    invoke-static {v0}, Lcom/android/incallui/InCallContentViewListener;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;

    goto :goto_0
.end method
