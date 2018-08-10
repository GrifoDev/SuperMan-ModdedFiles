.class Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;
.super Ljava/lang/Object;
.source "MultiWindowDecorSupport.java"

# interfaces
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiWindowDecorSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecorCaptionWindow"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecorCaptionWindow"


# instance fields
.field private mCaptionWindow:Landroid/view/Window;

.field private final mContext:Landroid/content/Context;

.field private mDecorView:Lcom/android/internal/policy/DecorView;

.field private mWindowAdded:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Lcom/android/internal/policy/DecorView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowAdded:Z

    invoke-static {p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-get8(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-get8(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private addWindow()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowAdded:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v4, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-get8(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    iput-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->requestTransparentRegion(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowAdded:Z

    :cond_1
    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x1000508

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DecorCaptionWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-get8(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public isShowing()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onWindowDismissed(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->-get8(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed(ZZ)V

    return-void
.end method

.method public removeWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowAdded:Z

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mWindowAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mCaptionWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setVisibility(I)V

    :cond_0
    return-void
.end method
