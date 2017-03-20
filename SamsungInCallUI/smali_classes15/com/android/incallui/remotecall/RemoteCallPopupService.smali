.class public Lcom/android/incallui/remotecall/RemoteCallPopupService;
.super Lcom/android/incallui/service/HeadUpNotificationService;
.source "RemoteCallPopupService.java"

# interfaces
.implements Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;


# instance fields
.field private final DELAY_FOR_HIDE_UI:J

.field private final EVENT_HIDE_UI:I

.field private final EVENT_UPDATE_UI:I

.field private final LOG_TAG:Ljava/lang/String;

.field private mBtnPull:Landroid/view/View;

.field private mCallPopupInfo:Landroid/widget/RelativeLayout;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

.field mHandler:Landroid/os/Handler;

.field private mName:Landroid/widget/TextView;

.field private mNameLayout:Landroid/widget/LinearLayout;

.field private mNumberLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPrimaryPhotoText:Landroid/widget/TextView;

.field private mRemoteCallPopup:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/incallui/service/HeadUpNotificationService;-><init>()V

    .line 35
    const-string v0, "RemoteCallPopupService"

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->LOG_TAG:Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->EVENT_UPDATE_UI:I

    .line 380
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->EVENT_HIDE_UI:I

    .line 381
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->DELAY_FOR_HIDE_UI:J

    .line 383
    new-instance v0, Lcom/android/incallui/remotecall/RemoteCallPopupService$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService$3;-><init>(Lcom/android/incallui/remotecall/RemoteCallPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/remotecall/RemoteCallPopupService;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/remotecall/RemoteCallPopupService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/remotecall/RemoteCallPopupService;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/remotecall/RemoteCallPopupService;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->updateGradientView(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/remotecall/RemoteCallPopupService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/remotecall/RemoteCallPopupService;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->animateForShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/remotecall/RemoteCallPopupService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/remotecall/RemoteCallPopupService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->updateUI()V

    return-void
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 206
    const-string v2, "RemoteCallPopupService"

    const-string v3, "setPrimaryImage()..."

    invoke-static {v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 211
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    if-eqz v1, :cond_2

    .line 214
    invoke-direct {p0, v1, v4}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->updateGradientView(Landroid/graphics/drawable/Drawable;Z)V

    .line 216
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 217
    .local v0, "diameter":I
    invoke-static {v1, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 221
    .end local v0    # "diameter":I
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryLabel(Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v0, "RemoteCallPopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimaryLabel()... label = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "RemoteCallPopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimaryPhoneNumber()... number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPullButton(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 154
    const-string v0, "RemoteCallPopupService"

    const-string v1, "setPullButton()..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mBtnPull:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isPullAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mBtnPull:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method private showRemoteCallUI()V
    .locals 3

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/incallui/remotecall/RemoteCallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method private updateCallStateLabel(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const v3, 0x7f090560

    const/4 v4, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const-string v0, ""

    .line 268
    .local v0, "callStateLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getHoldCallCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getHoldCallCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09055e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 278
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090563

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 280
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    .line 281
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090561

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 284
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateGradientView(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "needToSetDefault"    # Z

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v2, :cond_0

    .line 227
    const-string v2, "RemoteCallPopupService"

    const-string v3, "updateGradientView: mGradientAnimationView is null"

    invoke-static {v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 232
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/GradientAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 233
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 234
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2, p1, p2}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColorExceptCall(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    const-string v1, "RemoteCallPopupService"

    const-string v2, "updateUI()..."

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 132
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v1, "RemoteCallPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUI()... call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->setPrimaryName(Ljava/lang/String;Z)V

    .line 147
    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->setPrimaryLabel(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->setPrimaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 149
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->setPullButton(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->updateCallStateLabel(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->setPrimaryName(Ljava/lang/String;Z)V

    .line 140
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->setPrimaryName(Ljava/lang/String;Z)V

    .line 143
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 241
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 251
    :goto_0
    return-object v0

    .line 245
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 347
    const-string v0, "RemoteCallPopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 348
    invoke-super {p0, p1}, Lcom/android/incallui/service/HeadUpNotificationService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 349
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->updateUI()V

    .line 350
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->onCreate()V

    .line 60
    const-string v0, "RemoteCallPopupService"

    const-string v1, "onCreate"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->addListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    return-void
.end method

.method protected onCreateCustomView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040094

    invoke-virtual {v0, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 86
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/incallui/remotecall/RemoteCallPopupService$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService$1;-><init>(Lcom/android/incallui/remotecall/RemoteCallPopupService;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 99
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f100177

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    .line 101
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001d4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 102
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    .line 104
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001da

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhotoContainer:Landroid/view/View;

    .line 105
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f1000a5

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhoto:Landroid/widget/ImageView;

    .line 106
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001db

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001dc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mNameLayout:Landroid/widget/LinearLayout;

    .line 109
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f1000e9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mName:Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f10010e

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    .line 112
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f100198

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    .line 113
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f100193

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    .line 115
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mRemoteCallPopup:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001dd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mBtnPull:Landroid/view/View;

    .line 116
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mBtnPull:Landroid/view/View;

    new-instance v3, Lcom/android/incallui/remotecall/RemoteCallPopupService$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService$2;-><init>(Lcom/android/incallui/remotecall/RemoteCallPopupService;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->updateUI()V

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 67
    const-string v0, "RemoteCallPopupService"

    const-string v1, "onDestroy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 72
    :cond_0
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->removeListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    .line 73
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->onDestroy()V

    .line 74
    return-void
.end method

.method public onRemoteCallAdded()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    return-void
.end method

.method public onRemoteCallEnded()V
    .locals 0

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->animateForHide()V

    .line 377
    return-void
.end method

.method public onRemoteCallRemoved()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    return-void
.end method

.method public onRemoteCallStateChanged(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 2
    .param p1, "remoteCallList"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/service/HeadUpNotificationService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public setPrimaryName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "RemoteCallPopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimaryName()... name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    return-void
.end method
