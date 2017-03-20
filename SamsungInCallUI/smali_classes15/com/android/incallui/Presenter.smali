.class public abstract Lcom/android/incallui/Presenter;
.super Ljava/lang/Object;
.source "Presenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/android/incallui/Ui;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUi:Lcom/android/incallui/Ui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    iget-object v0, p0, Lcom/android/incallui/Presenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/incallui/Presenter;->mContext:Landroid/content/Context;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getUi()Lcom/android/incallui/Ui;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    iget-object v0, p0, Lcom/android/incallui/Presenter;->mUi:Lcom/android/incallui/Ui;

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    return-void
.end method

.method public final onUiDestroy(Lcom/android/incallui/Ui;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    .local p1, "ui":Lcom/android/incallui/Ui;, "TU;"
    invoke-virtual {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/Presenter;->mUi:Lcom/android/incallui/Ui;

    .line 45
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    .local p1, "ui":Lcom/android/incallui/Ui;, "TU;"
    iput-object p1, p0, Lcom/android/incallui/Presenter;->mUi:Lcom/android/incallui/Ui;

    .line 37
    return-void
.end method

.method public onUiResume()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    .local p1, "ui":Lcom/android/incallui/Ui;, "TU;"
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    .local p0, "this":Lcom/android/incallui/Presenter;, "Lcom/android/incallui/Presenter<TU;>;"
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Presenter;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method
