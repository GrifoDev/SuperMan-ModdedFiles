.class public final Landroid/view/inputmethod/InputMethodManagerWrapper;
.super Ljava/lang/Object;
.source "InputMethodManagerWrapper.java"


# static fields
.field private static sInstance:Landroid/view/inputmethod/InputMethodManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/view/inputmethod/InputMethodManagerWrapper;
    .locals 2

    const-class v1, Landroid/view/inputmethod/InputMethodManagerWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/view/inputmethod/InputMethodManagerWrapper;->sInstance:Landroid/view/inputmethod/InputMethodManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/InputMethodManagerWrapper;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodManagerWrapper;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManagerWrapper;->sInstance:Landroid/view/inputmethod/InputMethodManagerWrapper;

    :cond_0
    sget-object v0, Landroid/view/inputmethod/InputMethodManagerWrapper;->sInstance:Landroid/view/inputmethod/InputMethodManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getServedInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getServedInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    goto :goto_0
.end method

.method public getServedView()Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getServedView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
