.class public Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
.super Ljava/lang/Object;
.source "GlobalActionsSViewCoverDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field backgroundColor:I

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private mSViewCoverHeight:I

.field private mSViewCoverWidth:I

.field private mStatusHeight:I

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->mSViewCoverWidth:I

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->mSViewCoverHeight:I

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->mStatusHeight:I

    iput-object p1, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method private getBackgroundColor()I
    .locals 7

    const/16 v6, 0x77

    const/16 v5, 0x6b

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sview_color_use_all"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sview_color_random"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "s_vew_cover_background_color"

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sview_bg_display_random"

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    .locals 11

    const/16 v10, 0x8

    const v9, 0x102001a

    const v8, 0x1020019

    const/4 v7, -0x2

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    const v5, 0x10304f9

    invoke-direct {v1, v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    if-nez v4, :cond_1

    const v4, 0x1090070

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_0
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x102037e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->-set0(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder$1;

    invoke-direct {v5, p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder$1;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder$2;

    invoke-direct {v5, p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder$2;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    if-eqz v4, :cond_4

    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->-set1(Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->-get0()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x10203de

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    invoke-static {v4}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->-set2(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;

    :cond_0
    :goto_3
    invoke-virtual {v1, v3}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v4, 0x30

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105021c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->mSViewCoverWidth:I

    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105021d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->mSViewCoverHeight:I

    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->mStatusHeight:I

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->mSViewCoverWidth:I

    iget v6, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->mSViewCoverHeight:I

    iget v7, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->mStatusHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    return-object v1

    :cond_1
    const v4, 0x109006f

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020381

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v4, :cond_0

    const v4, 0x1020386

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v4, 0x1020386

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->contentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method

.method public setContentView(Landroid/view/View;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public setMessage(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
