.class public Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BaseRejectMsgContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/BaseRejectMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RejectMsgContentArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->init(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->init(Landroid/content/Context;II)V

    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_1

    iget-object v6, p0, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v7, 0x0

    invoke-virtual {v6, p4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    :goto_0
    :try_start_0
    iget v6, p0, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->mTextViewResourceId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const v7, 0x7f09023f

    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v5

    :cond_1
    move-object v5, p2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "RejectMsgContentArrayAdapter"

    const-string v7, "You must supply a resource ID for a TextView"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "RejectMsgContentArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private init(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->mResource:I

    iget v0, p0, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->mTextViewResourceId:I

    if-nez v0, :cond_0

    const v0, 0x7f1001b0

    iput v0, p0, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->mTextViewResourceId:I

    :goto_0
    return-void

    :cond_0
    iput p3, p0, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->mTextViewResourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
