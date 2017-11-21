.class public Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method private static synthetic -getcom-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->values()[Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0f0250

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v5, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    iput-boolean v4, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const v2, 0x7f0b0e35

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    iput-boolean v4, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x2

    const v6, 0x7f11001d

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v5, :cond_0

    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    iput-boolean v5, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-getcom-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_0
    if-eq v0, v5, :cond_3

    const/4 v2, 0x6

    if-ne v0, v2, :cond_9

    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_4
    return v4

    :pswitch_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    if-ne v0, v5, :cond_2

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_8

    if-eq v0, v7, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_7
    if-ne v0, v5, :cond_2

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_2

    if-eq v0, v7, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_9
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    if-eq v0, v7, :cond_4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    return-void
.end method

.method public setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    return-void
.end method
