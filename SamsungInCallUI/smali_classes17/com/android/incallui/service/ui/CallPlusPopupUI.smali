.class public Lcom/android/incallui/service/ui/CallPlusPopupUI;
.super Lcom/android/incallui/service/ui/PopupUI;
.source "CallPlusPopupUI.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallPlusImageIcon:Landroid/widget/ImageView;

.field private mCallPlusImportance:Landroid/widget/ImageView;

.field private mCallPlusImportanceStub:Landroid/view/ViewStub;

.field private mCallPlusMapIcon:Landroid/widget/ImageView;

.field private mCallPlusSubject:Landroid/widget/TextView;

.field private mCallPlusSubjectStub:Landroid/view/ViewStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/incallui/service/ui/CallPlusPopupUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0
    .param p1, "secCallPopupContainer"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/incallui/service/ui/PopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    .line 44
    return-void
.end method

.method private setCallPlusImportance(ZI)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "imp"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :cond_0
    return-void

    .line 103
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setCallPlusSubject(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :cond_0
    return-void

    .line 110
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10020b

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    .line 51
    iget-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10022c

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImportance:Landroid/widget/ImageView;

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100214

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusSubjectStub:Landroid/view/ViewStub;

    .line 57
    iget-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusSubjectStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusSubjectStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusSubjectStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100230

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusSubject:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100238

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusMapIcon:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100239

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImageIcon:Landroid/widget/ImageView;

    .line 65
    :cond_1
    return-void
.end method

.method public updateView(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 68
    const/4 v1, -0x1

    .line 69
    .local v1, "mImportance":I
    const/4 v4, 0x0

    .line 70
    .local v4, "mSubject":Ljava/lang/String;
    const/4 v2, 0x0

    .line 71
    .local v2, "mLocation":Ljava/lang/String;
    const/4 v3, 0x0

    .line 72
    .local v3, "mLocation_map":Ljava/lang/String;
    const/4 v0, 0x0

    .line 73
    .local v0, "mBackground":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateView data :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 74
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 76
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateView mImportance :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mSubject "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateView mLocation :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mLocation_map "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mBackground "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 82
    invoke-direct {p0, v7, v1}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->setCallPlusImportance(ZI)V

    .line 83
    invoke-direct {p0, v7, v4}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->setCallPlusSubject(ZLjava/lang/String;)V

    .line 84
    if-eqz v3, :cond_0

    .line 85
    iget-object v5, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusMapIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :goto_0
    if-eqz v0, :cond_1

    .line 90
    iget-object v5, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :goto_1
    return-void

    .line 87
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusMapIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v5, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v5, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusMapIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v5, p0, Lcom/android/incallui/service/ui/CallPlusPopupUI;->mCallPlusImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
