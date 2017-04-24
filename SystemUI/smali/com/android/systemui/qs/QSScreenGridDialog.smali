.class public Lcom/android/systemui/qs/QSScreenGridDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "QSScreenGridDialog.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurSelected:Landroid/view/View;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mOldSelected:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0f059b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSScreenGridDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f040108

    invoke-static {p1, v0, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d0383

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object v0, p0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSScreenGridDialog;->setView(Landroid/view/View;IIII)V

    iput-object v11, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const-string/jumbo v4, "qs_tile_column"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_1

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f130052

    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/View;->setSelected(Z)V

    iput-object v10, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    :goto_1
    new-instance v0, Lcom/android/systemui/qs/QSScreenGridDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSScreenGridDialog$1;-><init>(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v10, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/systemui/qs/QSScreenGridDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSScreenGridDialog$2;-><init>(Lcom/android/systemui/qs/QSScreenGridDialog;)V

    const v2, 0x7f0f059d

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/qs/QSScreenGridDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mOldSelected:Landroid/view/View;

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    return-void
.end method
