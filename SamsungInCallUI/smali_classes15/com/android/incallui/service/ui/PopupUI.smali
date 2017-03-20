.class public Lcom/android/incallui/service/ui/PopupUI;
.super Ljava/lang/Object;
.source "PopupUI.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 1
    .param p1, "secCallPopupContainer"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/incallui/service/ui/PopupUI;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    .line 29
    iget-object v0, p0, Lcom/android/incallui/service/ui/PopupUI;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/ui/PopupUI;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/PopupUI;->init()V

    .line 31
    return-void
.end method


# virtual methods
.method public getParentView()Lcom/android/incallui/service/SecCallPopupContainer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/incallui/service/ui/PopupUI;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
