.class public Lcom/samsung/android/app/SemUiSupportService;
.super Landroid/app/Service;
.source "SemUiSupportService.java"

# interfaces
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemUiSupportService"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDecor:Landroid/view/View;

.field private mWindow:Landroid/view/Window;

.field private mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "addContentView() view, params"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addWindow(Landroid/view/View;III)Landroid/view/Window;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/SemUiSupportService;->addWindow(Landroid/view/View;IIII)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public addWindow(Landroid/view/View;IIII)Landroid/view/Window;
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v7, "SemUiSupportService"

    const-string/jumbo v8, "addWindow view"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    return-object v9

    :cond_0
    new-instance v4, Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v7, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v4, v7, v9, v9}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iput p2, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p3, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p4, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v7, p5

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v4, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v6, :cond_1

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    throw v2

    :catch_0
    move-exception v0

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move-object v2, v0

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "SemUiSupportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "View Problem: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "w: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "h: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "t: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_4
    return-object v4
.end method

.method public createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    const-string/jumbo v2, "SemUiSupportService"

    const-string/jumbo v3, "createLayoutParams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x7d2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1040340

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "findViewById()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "getAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "getWindowAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string/jumbo v0, "SemUiSupportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v3, "SemUiSupportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/SemUiSupportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iput-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SemUiSupportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loaded theme = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    new-instance v3, Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v3, v4, v6, v6}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v1, "SemUiSupportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemUiSupportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Already remove this view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopService()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const-string/jumbo v3, "SemUiSupportService"

    const-string/jumbo v4, "onStartCommand()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_0

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object v1, v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopSelf()V

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeWindow(Landroid/view/Window;)Z
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "removeWindow window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "setAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "setContentView() layoutResID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "setContentView() view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "setContentView() view, params"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const-string/jumbo v0, "SemUiSupportService"

    const-string/jumbo v1, "setAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public stopService()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemUiSupportService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopSelf()V

    return-void
.end method

.method public stopUiSupportService()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemUiSupportService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopSelf()V

    return-void
.end method
