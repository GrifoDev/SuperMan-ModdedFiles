.class Landroid/view/View$VisibilityChangeForAutofillHandler;
.super Landroid/os/Handler;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityChangeForAutofillHandler"
.end annotation


# instance fields
.field private final mAfm:Landroid/view/autofill/AutofillManager;

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mAfm:Landroid/view/autofill/AutofillManager;

    iput-object p2, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;Landroid/view/View$VisibilityChangeForAutofillHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View$VisibilityChangeForAutofillHandler;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mAfm:Landroid/view/autofill/AutofillManager;

    iget-object v1, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChange(Landroid/view/View;Z)V

    return-void
.end method
