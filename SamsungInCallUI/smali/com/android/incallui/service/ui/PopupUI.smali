.class public Lcom/android/incallui/service/ui/PopupUI;
.super Ljava/lang/Object;


# instance fields
.field mContext:Landroid/content/Context;

.field mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/service/ui/PopupUI;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, p0, Lcom/android/incallui/service/ui/PopupUI;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/ui/PopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/PopupUI;->init()V

    return-void
.end method


# virtual methods
.method public getParentView()Lcom/android/incallui/service/SecCallPopupContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/ui/PopupUI;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
