.class public Lcom/samsung/android/settings/RecommendRingtoneDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/RecommendRingtoneDialog$1;,
        Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;
    }
.end annotation


# instance fields
.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRecommendAdapter:Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;

.field private mSelectedPosition:I

.field private offset:I

.field private ringtone:Landroid/media/Ringtone;

.field private ringtoneType:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/RecommendRingtoneDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mSelectedPosition:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/RecommendRingtoneDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->offset:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/RecommendRingtoneDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/RecommendRingtoneDialog;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mSelectedPosition:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/RecommendRingtoneDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->requestAudioFocus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mSelectedPosition:I

    new-instance v0, Lcom/samsung/android/settings/RecommendRingtoneDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog$1;-><init>(Lcom/samsung/android/settings/RecommendRingtoneDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private requestAudioFocus()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "RecommendRingtoneDialog"

    const-string/jumbo v1, "requestAudioFocus fail. it may be during call"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget v2, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mSelectedPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "RecommendRingtoneDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick - ActualUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "highlight_offset"

    iget v4, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->offset:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "RecommendRingtoneDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    invoke-static {p0, v2, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    iget v2, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time_2"

    iget v4, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->offset:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time"

    iget v4, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->offset:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "recommend_offset"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->offset:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "ringtoneType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    iput-object p0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b193e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/samsung/android/settings/RecommendRingtoneDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog$2;-><init>(Lcom/samsung/android/settings/RecommendRingtoneDialog;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;-><init>(Lcom/samsung/android/settings/RecommendRingtoneDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->setupAlert()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method
