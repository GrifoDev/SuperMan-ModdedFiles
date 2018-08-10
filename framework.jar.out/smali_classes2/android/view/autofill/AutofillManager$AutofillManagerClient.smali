.class final Landroid/view/autofill/AutofillManager$AutofillManagerClient;
.super Landroid/view/autofill/IAutoFillManagerClient$Stub;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutofillManagerClient"
.end annotation


# instance fields
.field private final mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_56518(Landroid/view/autofill/AutofillManager;ZZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-wrap11(Landroid/view/autofill/AutofillManager;ZZZ)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_56822(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-wrap5(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_57148(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-wrap4(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_57539(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->-wrap10(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_57869(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-wrap9(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_58121(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_58381(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;)V
    .locals 7

    :try_start_0
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->-get0(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIntentSender() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_59002(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-wrap12(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    return-void
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillManager;

    if-eqz v3, :cond_0

    new-instance v0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v0}, Landroid/view/autofill/AutofillManager;->-wrap8(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public autofill(ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$4;

    invoke-direct {v1, p1, v0, p2, p3}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap8(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public notifyNoFillUi(ILandroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$2;

    invoke-direct {v1, p1, v0, p2}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap8(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap8(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 8

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillManager;

    if-eqz v4, :cond_0

    new-instance v0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;

    move v1, p1

    move v2, p3

    move v3, p4

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;-><init>(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4, v0}, Landroid/view/autofill/AutofillManager;->-wrap8(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setState(ZZZ)V
    .locals 2

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;

    invoke-direct {v1, p1, p2, p3, v0}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;-><init>(ZZZLjava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap8(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 6

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillManager;

    if-eqz v3, :cond_0

    new-instance v0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$7;

    move v1, p3

    move v2, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$7;-><init>(ZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v0}, Landroid/view/autofill/AutofillManager;->-wrap8(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 2

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$1;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap8(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
